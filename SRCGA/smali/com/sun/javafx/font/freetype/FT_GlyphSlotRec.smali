.class Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;
.super Ljava/lang/Object;
.source "FT_GlyphSlotRec.java"


# instance fields
.field advance_x:J

.field advance_y:J

.field bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

.field bitmap_left:I

.field bitmap_top:I

.field format:I

.field linearHoriAdvance:J

.field linearVertAdvance:J

.field metrics:Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->metrics:Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;

    .line 35
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/font/freetype/FT_Bitmap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/font/freetype/FT_Bitmap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    return-void
.end method
