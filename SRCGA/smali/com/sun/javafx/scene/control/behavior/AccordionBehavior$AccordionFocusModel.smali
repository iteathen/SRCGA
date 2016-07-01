.class Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
.super Ljavafx/scene/control/FocusModel;
.source "AccordionBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccordionFocusModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/FocusModel",
        "<",
        "Ljavafx/scene/control/TitledPane;",
        ">;"
    }
.end annotation


# instance fields
.field private final accordion:Ljavafx/scene/control/Accordion;

.field private final focusListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final paneFocusListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final panesListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TitledPane;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Accordion;)V
    .locals 9

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v1, p1

    .local v1, "accordion":Ljavafx/scene/control/Accordion;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/FocusModel;-><init>()V

    .line 169
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$1;-><init>(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focusListener:Ljavafx/beans/value/ChangeListener;

    .line 186
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$2;-><init>(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->paneFocusListener:Ljavafx/beans/value/ChangeListener;

    .line 195
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->panesListener:Ljavafx/collections/ListChangeListener;

    .line 210
    move-object v4, v1

    if-nez v4, :cond_0

    .line 211
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Accordion can not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    .line 214
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 215
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->panesListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 216
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    move-object v3, v4

    .line 217
    .local v3, "tp":Ljavafx/scene/control/TitledPane;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->paneFocusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 218
    goto :goto_0

    .line 219
    .end local v3    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;)Ljavafx/scene/control/Accordion;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->lambda$new$135(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$135(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    move-object v3, v4

    .line 199
    .local v3, "tp":Ljavafx/scene/control/TitledPane;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->paneFocusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 200
    goto :goto_1

    .end local v3    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_1
    goto :goto_0

    .line 201
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    move-object v3, v4

    .line 203
    .restart local v3    # "tp":Ljavafx/scene/control/TitledPane;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->paneFocusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 204
    goto :goto_2

    .end local v3    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_3
    goto :goto_0

    .line 207
    :cond_4
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 223
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->panesListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 224
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    move-object v2, v3

    .line 225
    .local v2, "tp":Ljavafx/scene/control/TitledPane;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->paneFocusListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 226
    goto :goto_0

    .line 227
    .end local v2    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_0
    return-void
.end method

.method public focusNext()V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 253
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focus(I)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focus(I)V

    goto :goto_0
.end method

.method public focusPrevious()V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v1

    if-gtz v1, :cond_0

    .line 245
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v2}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focus(I)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focus(I)V

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 3

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v2}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 232
    .local v1, "panes":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TitledPane;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    goto :goto_0
.end method

.method protected bridge synthetic getModelItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getModelItem(I)Ljavafx/scene/control/TitledPane;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    return-object v0
.end method

.method protected getModelItem(I)Ljavafx/scene/control/TitledPane;
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    move v1, p1

    .local v1, "row":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->accordion:Ljavafx/scene/control/Accordion;

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 238
    .local v2, "panes":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TitledPane;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 240
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    :goto_0
    return-object v0

    .line 239
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    :cond_0
    move v3, v1

    if-gez v3, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 240
    :cond_1
    move-object v3, v2

    move v4, v1

    move-object v5, v2

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    move-object v0, v3

    goto :goto_0
.end method
