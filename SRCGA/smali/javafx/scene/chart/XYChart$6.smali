.class Ljavafx/scene/chart/XYChart$6;
.super Ljavafx/css/StyleableBooleanProperty;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/XYChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart;Z)V
    .locals 5

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$6;->this$0:Ljavafx/scene/chart/XYChart;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$6;->this$0:Ljavafx/scene/chart/XYChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/XYChart",
            "<**>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    # getter for: Ljavafx/scene/chart/XYChart$StyleableProperties;->ALTERNATIVE_ROW_FILL_VISIBLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/XYChart$StyleableProperties;->access$500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    const-string v1, "alternativeRowFillVisible"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$6;, "Ljavafx/scene/chart/XYChart$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$6;->this$0:Ljavafx/scene/chart/XYChart;

    invoke-virtual {v1}, Ljavafx/scene/chart/XYChart;->requestChartLayout()V

    .line 326
    return-void
.end method
