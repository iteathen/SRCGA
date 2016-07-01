.class Ljavafx/scene/chart/Axis$TickMark$2;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis$TickMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis$TickMark;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis$TickMark;Z)V
    .locals 5

    .prologue
    .line 1056
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$2;, "Ljavafx/scene/chart/Axis$TickMark$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis$TickMark;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Axis$TickMark$2;->this$0:Ljavafx/scene/chart/Axis$TickMark;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$2;, "Ljavafx/scene/chart/Axis$TickMark$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark$2;->this$0:Ljavafx/scene/chart/Axis$TickMark;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark$2;, "Ljavafx/scene/chart/Axis$TickMark$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1070
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$2;, "Ljavafx/scene/chart/Axis$TickMark$2;"
    const-string v1, "textVisible"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark$2;, "Ljavafx/scene/chart/Axis$TickMark$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 1058
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$2;, "Ljavafx/scene/chart/Axis$TickMark$2;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis$TickMark$2;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark$2;->this$0:Ljavafx/scene/chart/Axis$TickMark;

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 1061
    :cond_0
    return-void
.end method
