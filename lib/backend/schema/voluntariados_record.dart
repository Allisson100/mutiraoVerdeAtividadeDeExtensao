import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoluntariadosRecord extends FirestoreRecord {
  VoluntariadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "anuncio" field.
  String? _anuncio;
  String get anuncio => _anuncio ?? '';
  bool hasAnuncio() => _anuncio != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _anuncio = snapshotData['anuncio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('voluntariados');

  static Stream<VoluntariadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VoluntariadosRecord.fromSnapshot(s));

  static Future<VoluntariadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VoluntariadosRecord.fromSnapshot(s));

  static VoluntariadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VoluntariadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VoluntariadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VoluntariadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VoluntariadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VoluntariadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVoluntariadosRecordData({
  String? nome,
  String? telefone,
  String? anuncio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'telefone': telefone,
      'anuncio': anuncio,
    }.withoutNulls,
  );

  return firestoreData;
}

class VoluntariadosRecordDocumentEquality
    implements Equality<VoluntariadosRecord> {
  const VoluntariadosRecordDocumentEquality();

  @override
  bool equals(VoluntariadosRecord? e1, VoluntariadosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.telefone == e2?.telefone &&
        e1?.anuncio == e2?.anuncio;
  }

  @override
  int hash(VoluntariadosRecord? e) =>
      const ListEquality().hash([e?.nome, e?.telefone, e?.anuncio]);

  @override
  bool isValidKey(Object? o) => o is VoluntariadosRecord;
}
