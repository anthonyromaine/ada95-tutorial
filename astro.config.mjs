import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	integrations: [
		starlight({
			title: 'Docs',
			sidebar: [
				{
					label: 'Ada 95: The Craft of Object-Oriented Programming',
					autogenerate: { directory: 'Ada 95: The Craft of Object-Oriented Programming'}
				},
				{
					label: 'Ada 95 Tutorial',
					autogenerate: { directory: 'ada95-tutorial'}
				},
			],
		}),
	],
	redirects: {
		'/': '/ada95-tutorial/part-1---beginning-ada-95-tutorial/introduction/',
	},
	// Process images with sharp: https://docs.astro.build/en/guides/assets/#using-sharp
	image: { service: { entrypoint: 'astro/assets/services/sharp' } },
});
