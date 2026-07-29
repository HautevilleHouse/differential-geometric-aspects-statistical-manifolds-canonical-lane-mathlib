import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure ConnectionTheoryPackage where
  leviCivitaConnection : Prop
  alphaConnection : ℝ → Prop
  dualConnection : Prop
  torsionFree : Prop
  metricCompatible : Prop

structure ConnectionTheoryEvidence (C : ConnectionTheoryPackage) where
  leviCivitaConnectionClosed : C.leviCivitaConnection
  alphaConnectionClosed : ∀ α : ℝ, C.alphaConnection α
  dualConnectionClosed : C.dualConnection
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible

def ConnectionTheoryClosed (C : ConnectionTheoryPackage) : Prop :=
  C.leviCivitaConnection ∧ (∀ α : ℝ, C.alphaConnection α) ∧ C.dualConnection ∧
  C.torsionFree ∧ C.metricCompatible

theorem connection_theory_closed_from_evidence (C : ConnectionTheoryPackage) (E : ConnectionTheoryEvidence C) :
    ConnectionTheoryClosed C := by
  exact And.intro E.leviCivitaConnectionClosed
    (And.intro E.alphaConnectionClosed
      (And.intro E.dualConnectionClosed
        (And.intro E.torsionFreeClosed E.metricCompatibleClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse