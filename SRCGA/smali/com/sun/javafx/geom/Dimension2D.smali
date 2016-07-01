.class public Lcom/sun/javafx/geom/Dimension2D;
.super Ljava/lang/Object;
.source "Dimension2D.java"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Dimension2D;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Dimension2D;
    move v1, p1

    .local v1, "w":F
    move v2, p2

    .local v2, "h":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/Dimension2D;->width:F

    .line 41
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/geom/Dimension2D;->height:F

    .line 42
    return-void
.end method
