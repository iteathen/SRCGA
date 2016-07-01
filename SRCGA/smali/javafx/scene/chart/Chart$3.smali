.class Ljavafx/scene/chart/Chart$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Side;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Chart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Chart;Ljavafx/geometry/Side;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Chart;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Side;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Chart$3;->this$0:Ljavafx/scene/chart/Chart;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart$3;->this$0:Ljavafx/scene/chart/Chart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Chart;",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$3;
    # getter for: Ljavafx/scene/chart/Chart$StyleableProperties;->TITLE_SIDE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Chart$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$3;
    const-string v1, "titleSide"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart$3;->this$0:Ljavafx/scene/chart/Chart;

    invoke-virtual {v1}, Ljavafx/scene/chart/Chart;->requestLayout()V

    .line 135
    return-void
.end method
