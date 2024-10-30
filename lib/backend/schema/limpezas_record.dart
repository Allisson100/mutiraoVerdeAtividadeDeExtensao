import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LimpezasRecord extends FirestoreRecord {
  LimpezasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "onde" field.
  String? _onde;
  String get onde => _onde ?? '';
  bool hasOnde() => _onde != null;

  // "quando" field.
  String? _quando;
  String get quando => _quando ?? '';
  bool hasQuando() => _quando != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _onde = snapshotData['onde'] as String?;
    _quando = snapshotData['quando'] as String?;
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('limpezas');

  static Stream<LimpezasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LimpezasRecord.fromSnapshot(s));

  static Future<LimpezasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LimpezasRecord.fromSnapshot(s));

  static LimpezasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LimpezasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LimpezasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LimpezasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LimpezasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LimpezasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLimpezasRecordData({
  String? onde,
  String? quando,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'onde': onde,
      'quando': quando,
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class LimpezasRecordDocumentEquality implements Equality<LimpezasRecord> {
  const LimpezasRecordDocumentEquality();

  @override
  bool equals(LimpezasRecord? e1, LimpezasRecord? e2) {
    return e1?.onde == e2?.onde &&
        e1?.quando == e2?.quando &&
        e1?.descricao == e2?.descricao;
  }

  @override
  int hash(LimpezasRecord? e) =>
      const ListEquality().hash([e?.onde, e?.quando, e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is LimpezasRecord;
}
