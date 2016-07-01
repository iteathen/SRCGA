.class Ljavafx/scene/chart/Axis$TickMark$1;
.super Ljavafx/beans/property/StringPropertyBase;
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
.method constructor <init>(Ljavafx/scene/chart/Axis$TickMark;)V
    .locals 4

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$1;, "Ljavafx/scene/chart/Axis$TickMark$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis$TickMark;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Axis$TickMark$1;->this$0:Ljavafx/scene/chart/Axis$TickMark;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1025
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$1;, "Ljavafx/scene/chart/Axis$TickMark$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark$1;->this$0:Ljavafx/scene/chart/Axis$TickMark;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark$1;, "Ljavafx/scene/chart/Axis$TickMark$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$1;, "Ljavafx/scene/chart/Axis$TickMark$1;"
    const-string v1, "label"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark$1;, "Ljavafx/scene/chart/Axis$TickMark$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark$1;, "Ljavafx/scene/chart/Axis$TickMark$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark$1;->this$0:Ljavafx/scene/chart/Axis$TickMark;

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis$TickMark$1;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 1021
    return-void
.end method
