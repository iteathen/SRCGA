.class public abstract Ljavafx/scene/control/ButtonBase;
.super Ljavafx/scene/control/Labeled;
.source "ButtonBase.java"


# static fields
.field private static final ARMED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private armed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "armed"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ButtonBase;->ARMED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Labeled;-><init>()V

    .line 98
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ButtonBase$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ButtonBase$1;-><init>(Ljavafx/scene/control/ButtonBase;)V

    iput-object v2, v1, Ljavafx/scene/control/ButtonBase;->armed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 123
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ButtonBase$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ButtonBase$2;-><init>(Ljavafx/scene/control/ButtonBase;)V

    iput-object v2, v1, Ljavafx/scene/control/ButtonBase;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Labeled;-><init>(Ljava/lang/String;)V

    .line 98
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ButtonBase$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ButtonBase$1;-><init>(Ljavafx/scene/control/ButtonBase;)V

    iput-object v3, v2, Ljavafx/scene/control/ButtonBase;->armed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 123
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ButtonBase$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ButtonBase$2;-><init>(Ljavafx/scene/control/ButtonBase;)V

    iput-object v3, v2, Ljavafx/scene/control/ButtonBase;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 98
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ButtonBase$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/control/ButtonBase$1;-><init>(Ljavafx/scene/control/ButtonBase;)V

    iput-object v4, v3, Ljavafx/scene/control/ButtonBase;->armed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 123
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ButtonBase$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/control/ButtonBase$2;-><init>(Ljavafx/scene/control/ButtonBase;)V

    iput-object v4, v3, Ljavafx/scene/control/ButtonBase;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 78
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ljavafx/scene/control/ButtonBase;->ARMED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/ButtonBase;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ButtonBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ButtonBase;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method private setArmed(Z)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ButtonBase;->armed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    return-void
.end method


# virtual methods
.method public arm()V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/ButtonBase;->setArmed(Z)V

    .line 158
    return-void
.end method

.method public final armedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBase;->armed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBase;
    return-object v0
.end method

.method public disarm()V
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/ButtonBase;->setArmed(Z)V

    .line 169
    return-void
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ButtonBase$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 203
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/Labeled;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 201
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->fire()V

    .line 202
    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract fire()V
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
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ButtonBase;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBase;
    return-object v0
.end method

.method public final isArmed()Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ButtonBase;->armedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBase;
    return v0
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
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBase;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBase;
    return-object v0
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
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method
