"use client";

export default function HomePage() {
    return (
        <div className="min-h-screen bg-white text-gray-900 flex flex-col justify-between">
            {/* ===== HEADER ===== */}
            <header className="fixed top-0 left-0 right-0 z-40 bg-white/70 backdrop-blur border-b border-gray-200">
                <div className="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between">
                    {/* Name / Logo */}
                    <div className="font-bold text-lg tracking-tight">Gafar Aleshe</div>

                    {/* Nav Links */}
                    <nav className="hidden md:flex items-center gap-6 text-sm opacity-80">
                        <a href="#" className="hover:underline">Work</a>
                        <a href="#" className="hover:underline">About</a>
                        <a href="#" className="hover:underline">Contact</a>
                    </nav>
                </div>
            </header>

            {/* ===== EMPTY MAIN CONTENT AREA ===== */}
            <main className="flex-grow pt-28 px-6">
                {/* Leave empty for now — you can add hero or projects later */}
            </main>

            {/* ===== FOOTER ===== */}
            <footer className="border-t border-gray-100 py-12 text-sm opacity-80">
                <div className="max-w-7xl mx-auto px-6 flex flex-col md:flex-row items-center justify-between gap-6">
                    <div>
                        <div className="font-semibold text-lg">Gafar Aleshe</div>
                        <div className="opacity-70">Design & Code</div>
                    </div>

                    <div className="flex gap-6">
                        <a href="#" className="hover:underline">Twitter</a>
                        <a href="#" className="hover:underline">Instagram</a>
                        <a href="#" className="hover:underline">Email</a>
                    </div>
                </div>
            </footer>
        </div>
    );
}
