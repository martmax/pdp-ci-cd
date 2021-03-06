/**
 * Asynchronously loads the component for HomePage
 */
import Loadable from 'react-loadable';
import LoadingIndicator from '../../shared/components/LoadingIndicator';

// import LoadingIndicator from 'components/LoadingIndicator';

export default Loadable({
  loader: () => import('.'),
  loading: LoadingIndicator,
});
