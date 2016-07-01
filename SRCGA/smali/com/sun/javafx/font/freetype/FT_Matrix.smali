.class Lcom/sun/javafx/font/freetype/FT_Matrix;
.super Ljava/lang/Object;
.source "FT_Matrix.java"


# instance fields
.field xx:J

.field xy:J

.field yx:J

.field yy:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FT_Matrix;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
