.class Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;
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
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9
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
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    move-object v6, v1

    check-cast v6, Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-object v4, v6

    .line 190
    .local v4, "focusedProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TitledPane;

    move-object v5, v6

    .line 191
    .local v5, "tp":Ljavafx/scene/control/TitledPane;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;->this$0:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->access$000(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)Ljavafx/scene/control/Accordion;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focus(I)V

    .line 193
    .end local v4    # "focusedProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .end local v5    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_0
    return-void
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
