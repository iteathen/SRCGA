.class Ljavafx/scene/control/ToggleButton$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ToggleButton;->toggleGroupProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/control/ToggleGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;"
        }
    .end annotation
.end field

.field private old:Ljavafx/scene/control/ToggleGroup;

.field final synthetic this$0:Ljavafx/scene/control/ToggleButton;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ToggleButton;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ToggleButton;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 207
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ToggleButton$2$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ToggleButton$2;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/ToggleButton$2;->listener:Ljavafx/beans/value/ChangeListener;

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ToggleButton$2;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/Toggle;Ljavafx/scene/control/Toggle;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ToggleButton$2;->lambda$$252(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/Toggle;Ljavafx/scene/control/Toggle;)V

    return-void
.end method

.method private synthetic lambda$$252(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/Toggle;Ljavafx/scene/control/Toggle;)V
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$2;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oV":Ljavafx/scene/control/Toggle;
    move-object v3, p3

    .local v3, "nV":Ljavafx/scene/control/Toggle;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleButton;->getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-result-object v4

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v5}, Ljavafx/scene/control/ToggleButton;->isSelected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->setOverriddenFocusTraversability(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$2;
    const-string v1, "toggleGroup"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$2;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleButton$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ToggleGroup;

    move-object v1, v3

    .line 212
    .local v1, "tg":Ljavafx/scene/control/ToggleGroup;
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 213
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$2;->old:Ljavafx/scene/control/ToggleGroup;

    if-eqz v3, :cond_0

    .line 214
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$2;->old:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 216
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 217
    new-instance v3, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;)V

    move-object v2, v3

    .line 218
    .local v2, "parentTraversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleButton;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 220
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getSelectedToggle()Ljavafx/scene/control/Toggle;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleButton;->isSelected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->setOverriddenFocusTraversability(Ljava/lang/Boolean;)V

    .line 221
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 222
    .line 228
    .end local v2    # "parentTraversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_1
    :goto_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ToggleButton$2;->old:Ljavafx/scene/control/ToggleGroup;

    .line 229
    return-void

    .line 220
    .restart local v2    # "parentTraversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 222
    .end local v2    # "parentTraversalEngine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_3
    move-object v3, v1

    if-nez v3, :cond_1

    .line 223
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$2;->old:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 224
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$2;->old:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 225
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$2;->this$0:Ljavafx/scene/control/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleButton;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    goto :goto_1
.end method
