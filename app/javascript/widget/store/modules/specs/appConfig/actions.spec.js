import { actions } from '../../appConfig';

const commit = jest.fn();
describe('#actions', () => {
  describe('#setReferrerHost', () => {
    it('creates actions properly', () => {
      actions.setReferrerHost({ commit }, 'www.hello24.ng');
      expect(commit.mock.calls).toEqual([
        ['SET_REFERRER_HOST', 'www.hello24.ng'],
      ]);
    });
  });

  describe('#setWidgetColor', () => {
    it('creates actions properly', () => {
      actions.setWidgetColor({ commit }, { widgetColor: '#eaeaea' });
      expect(commit.mock.calls).toEqual([
        ['SET_WIDGET_COLOR', { widgetColor: '#eaeaea' }],
      ]);
    });
  });
});
