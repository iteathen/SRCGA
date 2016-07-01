.class public Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
.super Ljava/lang/Object;
.source "BorderImageSlices.java"


# static fields
.field public static final DEFAULT:Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

.field public static final EMPTY:Lcom/sun/javafx/scene/layout/region/BorderImageSlices;


# instance fields
.field public filled:Z

.field public widths:Ljavafx/scene/layout/BorderWidths;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/layout/BorderWidths;->EMPTY:Ljavafx/scene/layout/BorderWidths;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;-><init>(Ljavafx/scene/layout/BorderWidths;Z)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->EMPTY:Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    .line 45
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/layout/BorderWidths;->FULL:Ljavafx/scene/layout/BorderWidths;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;-><init>(Ljavafx/scene/layout/BorderWidths;Z)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->DEFAULT:Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/layout/BorderWidths;Z)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    move-object v1, p1

    .local v1, "widths":Ljavafx/scene/layout/BorderWidths;
    move v2, p2

    .local v2, "filled":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->widths:Ljavafx/scene/layout/BorderWidths;

    .line 52
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->filled:Z

    .line 53
    return-void
.end method
