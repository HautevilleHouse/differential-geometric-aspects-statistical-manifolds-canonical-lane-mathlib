import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure DualAffineGeometry where
  primalConnection : Type u
  dualConnection : Type v
  conjugateConnection : Prop
  curvatureInvariant : Prop
  divergenceFunction : Type w

structure DualAffineGeometryEvidence (D : DualAffineGeometry) where
  conjugateConnectionClosed : D.conjugateConnection
  curvatureInvariantClosed : D.curvatureInvariant

def DualAffineGeometryClosed (D : DualAffineGeometry) : Prop :=
  D.conjugateConnection ∧ D.curvatureInvariant

theorem dual_affine_geometry_closed_from_evidence
    (D : DualAffineGeometry) (E : DualAffineGeometryEvidence D) :
    DualAffineGeometryClosed D := by
  exact And.intro E.conjugateConnectionClosed E.curvatureInvariantClosed

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse