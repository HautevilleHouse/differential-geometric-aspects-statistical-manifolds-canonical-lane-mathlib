import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure StatisticalManifoldConnection where
  connection : Type u
  torsionFree : Prop
  metricCompatible : Prop
  alphaConnection : Prop
  exponentialConnection : Prop

structure StatisticalManifoldConnectionEvidence (C : StatisticalManifoldConnection) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  alphaConnectionClosed : C.alphaConnection
  exponentialConnectionClosed : C.exponentialConnection

def StatisticalManifoldConnectionClosed (C : StatisticalManifoldConnection) : Prop :=
  C.torsionFree ∧ C.metricCompatible ∧ C.alphaConnection ∧ C.exponentialConnection

theorem statistical_manifold_connection_closed_from_evidence
    (C : StatisticalManifoldConnection) (E : StatisticalManifoldConnectionEvidence C) :
    StatisticalManifoldConnectionClosed C := by
  exact And.intro E.torsionFreeClosed
    (And.intro E.metricCompatibleClosed
      (And.intro E.alphaConnectionClosed E.exponentialConnectionClosed))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse