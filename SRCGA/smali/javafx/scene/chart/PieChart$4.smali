.class Ljavafx/scene/chart/PieChart$4;
.super Ljavafx/css/StyleableBooleanProperty;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/PieChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/PieChart;Z)V
    .locals 5

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/PieChart;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/PieChart$4;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$4;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$4;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/PieChart;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$4;
    # getter for: Ljavafx/scene/chart/PieChart$StyleableProperties;->CLOCKWISE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/PieChart$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$4;
    const-string v1, "clockwise"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$4;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/PieChart$4;->get()Z

    move-result v1

    .line 266
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$4;->this$0:Ljavafx/scene/chart/PieChart;

    invoke-virtual {v1}, Ljavafx/scene/chart/PieChart;->requestChartLayout()V

    .line 267
    return-void
.end method
