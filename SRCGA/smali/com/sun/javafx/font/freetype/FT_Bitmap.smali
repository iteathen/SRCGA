.class Lcom/sun/javafx/font/freetype/FT_Bitmap;
.super Ljava/lang/Object;
.source "FT_Bitmap.java"


# instance fields
.field buffer:J

.field num_grays:S

.field palette:J

.field palette_mode:C

.field pitch:I

.field pixel_mode:B

.field rows:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FT_Bitmap;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
