.class Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "VirtualFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/VirtualFlow;->verticalProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;"
    const-string v1, "vertical"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 10

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->clear()V

    .line 158
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->clear()V

    .line 160
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-object v7, v2

    move-wide v8, v3

    move-wide v2, v8

    move-object v4, v7

    move-wide v5, v8

    iput-wide v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 161
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 162
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setViewportBreadth(D)V

    .line 163
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setViewportLength(D)V

    .line 164
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastPosition:D

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$000(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    .line 166
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$100(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    .line 167
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 168
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->access$200(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)V

    .line 169
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 170
    return-void
.end method
