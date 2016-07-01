.class Ljavafx/scene/chart/PieChart$1;
.super Ljavafx/scene/shape/Path;
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
.method constructor <init>(Ljavafx/scene/chart/PieChart;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/PieChart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/PieChart$1;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/Path;-><init>()V

    return-void
.end method


# virtual methods
.method public usesMirroring()Z
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$1;
    return v0
.end method
