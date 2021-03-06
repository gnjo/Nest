<ui-link>
	<a href="{ opts.href || 'javascript:;' }" class="{ classnames }" onclick="{ opts.onclick }">
		<yield />
	</a>

	<script>
		import { base, primary, success, warning, danger } from './link.less';
		import classNames from 'classnames';

		const isUndefined = obj => typeof obj === 'undefined';
		this.classnames = classNames({
			[ base ]: true,
			[ primary ]: true,
			[ success ]: !isUndefined( this.opts.success ),
			[ warning ]: !isUndefined( this.opts.warning ),
			[ danger ]: !isUndefined( this.opts.danger ),
		});
	</script>
</ui-link>
