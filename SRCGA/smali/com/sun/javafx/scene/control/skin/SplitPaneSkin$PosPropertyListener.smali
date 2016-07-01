.class Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;
.super Ljava/lang/Object;
.source "SplitPaneSkin.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PosPropertyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field divider:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)V
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v2, p2

    .local v2, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;->this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 135
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;->divider:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    .line 136
    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Number;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Number;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;->this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->access$000(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;->divider:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->access$102(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Z)Z

    move-result v4

    .line 143
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;->this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->requestLayout()V

    .line 144
    return-void
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method
