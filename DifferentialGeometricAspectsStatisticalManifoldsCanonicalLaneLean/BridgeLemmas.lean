import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  StatisticalManifoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse