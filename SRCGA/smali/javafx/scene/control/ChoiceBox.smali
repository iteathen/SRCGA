.class public Ljavafx/scene/control/ChoiceBox;
.super Ljavafx/scene/control/Control;
.source "ChoiceBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Control;"
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "items"
.end annotation


# static fields
.field public static final ON_HIDDEN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_HIDING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOWING_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private converter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private items:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final itemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private onAction:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHidden:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHiding:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShowing:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShown:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedItemListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectionModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "CHOICE_BOX_ON_SHOWING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ChoiceBox;->ON_SHOWING:Ljavafx/event/EventType;

    .line 104
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "CHOICE_BOX_ON_SHOWN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ChoiceBox;->ON_SHOWN:Ljavafx/event/EventType;

    .line 111
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "CHOICE_BOX_ON_HIDING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ChoiceBox;->ON_HIDING:Ljavafx/event/EventType;

    .line 118
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "CHOICE_BOX_ON_HIDDEN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ChoiceBox;->ON_HIDDEN:Ljavafx/event/EventType;

    .line 491
    const-string v0, "showing"

    .line 492
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ChoiceBox;->SHOWING_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 491
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/ChoiceBox;-><init>(Ljavafx/collections/ObservableList;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 173
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    const-string v7, "selectionModel"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ChoiceBox$1;-><init>(Ljavafx/scene/control/ChoiceBox;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    .line 188
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ChoiceBox$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ChoiceBox;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->selectedItemListener:Ljavafx/beans/value/ChangeListener;

    .line 205
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$2;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 236
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$3;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->items:Ljavafx/beans/property/ObjectProperty;

    .line 277
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ChoiceBox$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/ChoiceBox;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->itemsListener:Ljavafx/collections/ListChangeListener;

    .line 311
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "converter"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 324
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    const-string v7, "value"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ChoiceBox$4;-><init>(Ljavafx/scene/control/ChoiceBox;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->value:Ljavafx/beans/property/ObjectProperty;

    .line 352
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$5;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 377
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$6;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->onShowing:Ljavafx/beans/property/ObjectProperty;

    .line 400
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$7;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->onShown:Ljavafx/beans/property/ObjectProperty;

    .line 423
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$8;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->onHiding:Ljavafx/beans/property/ObjectProperty;

    .line 446
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$9;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$9;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox;->onHidden:Ljavafx/beans/property/ObjectProperty;

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-string v6, "choice-box"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 144
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->COMBO_BOX:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ChoiceBox;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 145
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ChoiceBox;->setItems(Ljavafx/collections/ObservableList;)V

    .line 146
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ChoiceBox;->setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V

    .line 151
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ChoiceBox$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/ChoiceBox;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/ChoiceBox;)Ljavafx/beans/value/ChangeListener;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ChoiceBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->selectedItemListener:Ljavafx/beans/value/ChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ChoiceBox;
    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Ljavafx/scene/control/ChoiceBox;->SHOWING_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/ChoiceBox;)Ljavafx/collections/ListChangeListener;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ChoiceBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->itemsListener:Ljavafx/collections/ListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ChoiceBox;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/ChoiceBox;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ChoiceBox;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ChoiceBox;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/control/ChoiceBox;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ChoiceBox;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ChoiceBox;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/control/ChoiceBox;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ChoiceBox;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ChoiceBox;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/control/ChoiceBox;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ChoiceBox;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ChoiceBox;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/control/ChoiceBox;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ChoiceBox;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ChoiceBox;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ChoiceBox;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ChoiceBox;->lambda$new$137(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/ChoiceBox;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ChoiceBox;->lambda$new$138(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/ChoiceBox;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ChoiceBox;->lambda$new$136(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$136(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    if-nez v5, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v4, v5

    .line 154
    .local v4, "index":I
    move v5, v4

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    .line 155
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 157
    :cond_1
    goto :goto_0
.end method

.method private synthetic lambda$new$137(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v4

    if-nez v4, :cond_0

    .line 190
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ChoiceBox;->setValue(Ljava/lang/Object;)V

    .line 192
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$138(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v4

    move-object v2, v4

    .line 279
    .local v2, "sm":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 280
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 281
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    .line 287
    :cond_1
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 291
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 292
    .local v3, "selectedItem":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    .line 295
    .line 299
    .end local v3    # "selectedItem":Ljava/lang/Object;, "TT;"
    :cond_3
    return-void

    .line 283
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 284
    .local v3, "newIndex":I
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SingleSelectionModel;->setSelectedIndex(I)V

    goto :goto_0
.end method

.method private setShowing(Z)V
    .locals 7

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    :goto_0
    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 227
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 228
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    :goto_1
    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 230
    return-void

    .line 225
    :cond_0
    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_HIDING:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_HIDDEN:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    goto :goto_1
.end method


# virtual methods
.method public converterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ChoiceBox$10;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 613
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/Control;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 615
    :goto_0
    return-void

    .line 611
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->hide()V

    goto :goto_0

    .line 612
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->show()V

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->items:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getOnAction()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getOnHidden()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getOnHiding()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getOnShowing()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getOnShown()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/SingleSelectionModel;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/ChoiceBox;->setShowing(Z)V

    .line 478
    return-void
.end method

.method public final isShowing()Z
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return v0
.end method

.method public final itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->items:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final onActionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final onHiddenProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->onHidden:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final onHidingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->onHiding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final onShowingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->onShowing:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final onShownProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->onShown:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v6, Ljavafx/scene/control/ChoiceBox$10;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 604
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    :goto_0
    return-object v0

    .line 592
    .restart local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ChoiceBox;->getAccessibleText()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 593
    .local v3, "accText":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 596
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 597
    .local v4, "title":Ljava/lang/Object;
    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 598
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ChoiceBox;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v6

    move-object v5, v6

    .line 599
    .local v5, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v6, v5

    if-nez v6, :cond_3

    .line 600
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ChoiceBox;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ChoiceBox;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    const-string v6, ""

    goto :goto_1

    .line 602
    :cond_3
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/ChoiceBox;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 603
    .end local v3    # "accText":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/Object;
    .end local v5    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    :pswitch_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ChoiceBox;->isShowing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final selectionModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public final setConverter(Ljavafx/util/StringConverter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setItems(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox;->items:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnAction(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnHidden(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnHiding(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShowing(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShown(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/ChoiceBox;->setShowing(Z)V

    .line 471
    :cond_0
    return-void
.end method

.method public final showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method

.method public valueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    return-object v0
.end method
