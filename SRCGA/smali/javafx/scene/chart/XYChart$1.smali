.class Ljavafx/scene/chart/XYChart$1;
.super Ljavafx/scene/Group;
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
.method constructor <init>(Ljavafx/scene/chart/XYChart;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$1;, "Ljavafx/scene/chart/XYChart$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$1;->this$0:Ljavafx/scene/chart/XYChart;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Group;-><init>()V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    .prologue
    .line 110
    .local p0, "this":Ljavafx/scene/chart/XYChart$1;, "Ljavafx/scene/chart/XYChart$1;"
    return-void
.end method
