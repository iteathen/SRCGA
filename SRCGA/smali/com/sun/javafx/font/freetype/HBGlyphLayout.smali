.class public Lcom/sun/javafx/font/freetype/HBGlyphLayout;
.super Lcom/sun/javafx/text/GlyphLayout;
.source "HBGlyphLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/HBGlyphLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/text/GlyphLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public layout(Lcom/sun/javafx/text/TextRun;Lcom/sun/javafx/font/PGFont;Lcom/sun/javafx/font/FontStrike;[C)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/HBGlyphLayout;
    move-object v1, p1

    .local v1, "run":Lcom/sun/javafx/text/TextRun;
    move-object v2, p2

    .local v2, "font":Lcom/sun/javafx/font/PGFont;
    move-object v3, p3

    .local v3, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v4, p4

    .local v4, "text":[C
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Only simple text supported."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    return-void
.end method
