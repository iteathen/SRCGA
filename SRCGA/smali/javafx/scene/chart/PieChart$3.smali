.class Ljavafx/scene/chart/PieChart$3;
.super Ljavafx/css/StyleableDoubleProperty;
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
.method constructor <init>(Ljavafx/scene/chart/PieChart;D)V
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/PieChart;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$3;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$3;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$3;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$3;
    # getter for: Ljavafx/scene/chart/PieChart$StyleableProperties;->START_ANGLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/PieChart$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$3;
    const-string v1, "startAngle"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 240
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/PieChart$3;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/PieChart$3;->get()D

    move-result-wide v2

    .line 241
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$3;->this$0:Ljavafx/scene/chart/PieChart;

    invoke-virtual {v2}, Ljavafx/scene/chart/PieChart;->requestChartLayout()V

    .line 242
    return-void
.end method
