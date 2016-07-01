.class Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;
.super Ljava/lang/Object;
.source "FT_Glyph_Metrics.java"


# instance fields
.field height:J

.field horiAdvance:J

.field horiBearingX:J

.field horiBearingY:J

.field vertAdvance:J

.field vertBearingX:J

.field vertBearingY:J

.field width:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FT_Glyph_Metrics;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
