.class Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;
.super Ljava/lang/Object;
.source "AccordionBehavior.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->access$000(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)Ljavafx/scene/control/Accordion;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getExpandedPane()Ljavafx/scene/control/TitledPane;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 174
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->access$000(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)Ljavafx/scene/control/Accordion;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getExpandedPane()Ljavafx/scene/control/TitledPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->access$000(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)Ljavafx/scene/control/Accordion;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->access$000(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)Ljavafx/scene/control/Accordion;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    goto :goto_0
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
