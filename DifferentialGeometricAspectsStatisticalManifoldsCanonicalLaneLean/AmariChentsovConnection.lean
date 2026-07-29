import DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.FisherInformation

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure AmariChentsovConnection (M : StatisticalManifold) where
  alphaConnections : ℝ → Type
  metricCompatible : Prop
  torsionFree : Prop
  conjugateConnection : Prop
  divergenceFunction : Prop

structure AmariChentsovEvidence (C : AmariChentsovConnection M) where
  metricCompatibleClosed : C.metricCompatible
  torsionFreeClosed : C.torsionFree
  conjugateConnectionClosed : C.conjugateConnection
  divergenceFunctionClosed : C.divergenceFunction

def AmariChentsovClosed (C : AmariChentsovConnection M) : Prop :=
  C.metricCompatible ∧ C.torsionFree ∧ C.conjugateConnection ∧ C.divergenceFunction

theorem amari_chentzov_closed_from_evidence
  (C : AmariChentsovConnection M) (E : AmariChentsovEvidence C) :
  AmariChentsovClosed C := by
  exact And.intro E.metricCompatibleClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.conjugateConnectionClosed E.divergenceFunctionClosed))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse