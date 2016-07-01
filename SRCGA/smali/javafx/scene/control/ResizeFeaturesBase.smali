.class public Ljavafx/scene/control/ResizeFeaturesBase;
.super Ljava/lang/Object;
.source "ResizeFeaturesBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final column:Ljavafx/scene/control/TableColumnBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;"
        }
    .end annotation
.end field

.field private final delta:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Double;)V
    .locals 5
    .param p1    # Ljavafx/scene/control/TableColumnBase;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "column"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "delta"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ResizeFeaturesBase;, "Ljavafx/scene/control/ResizeFeaturesBase<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v2, p2

    .local v2, "delta":Ljava/lang/Double;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ResizeFeaturesBase;->column:Ljavafx/scene/control/TableColumnBase;

    .line 52
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/ResizeFeaturesBase;->delta:Ljava/lang/Double;

    .line 53
    return-void
.end method


# virtual methods
.method public getColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ResizeFeaturesBase;, "Ljavafx/scene/control/ResizeFeaturesBase<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ResizeFeaturesBase;->column:Ljavafx/scene/control/TableColumnBase;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ResizeFeaturesBase;, "Ljavafx/scene/control/ResizeFeaturesBase<TS;>;"
    return-object v0
.end method

.method public getDelta()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ResizeFeaturesBase;, "Ljavafx/scene/control/ResizeFeaturesBase<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ResizeFeaturesBase;->delta:Ljava/lang/Double;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ResizeFeaturesBase;, "Ljavafx/scene/control/ResizeFeaturesBase<TS;>;"
    return-object v0
.end method
