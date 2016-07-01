.class Lcom/sun/javafx/font/freetype/FTFactory$StubGlyphLayout;
.super Lcom/sun/javafx/text/GlyphLayout;
.source "FTFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/freetype/FTFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StubGlyphLayout"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFactory$StubGlyphLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/text/GlyphLayout;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public layout(Lcom/sun/javafx/text/TextRun;Lcom/sun/javafx/font/PGFont;Lcom/sun/javafx/font/FontStrike;[C)V
    .locals 0
    .param p1, "run"    # Lcom/sun/javafx/text/TextRun;
    .param p2, "font"    # Lcom/sun/javafx/font/PGFont;
    .param p3, "strike"    # Lcom/sun/javafx/font/FontStrike;
    .param p4, "text"    # [C

    .prologue
    .line 122
    return-void
.end method
