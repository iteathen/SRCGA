.class final Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
.super Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;
.source "ReadOnlyIntegerProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/ReadOnlyIntegerProperty;->readOnlyIntegerProperty(Ljavafx/beans/property/ReadOnlyProperty;)Ljavafx/beans/property/ReadOnlyIntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;

.field final synthetic val$property:Ljavafx/beans/property/ReadOnlyProperty;

.field private valid:Z


# direct methods
.method constructor <init>(Ljavafx/beans/property/ReadOnlyProperty;)V
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->val$property:Ljavafx/beans/property/ReadOnlyProperty;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;-><init>()V

    .line 96
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->valid:Z

    .line 97
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/beans/property/ReadOnlyIntegerProperty$1$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/ReadOnlyIntegerProperty$1;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->listener:Ljavafx/beans/InvalidationListener;

    .line 105
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->val$property:Ljavafx/beans/property/ReadOnlyProperty;

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-interface {v2, v3}, Ljavafx/beans/property/ReadOnlyProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 106
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/ReadOnlyIntegerProperty$1;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->lambda$$7(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$$7(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->valid:Z

    if-eqz v2, :cond_0

    .line 99
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->valid:Z

    .line 100
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->fireValueChangedEvent()V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public get()I
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->valid:Z

    .line 111
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->val$property:Ljavafx/beans/property/ReadOnlyProperty;

    invoke-interface {v2}, Ljavafx/beans/property/ReadOnlyProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    move-object v1, v2

    .line 112
    .local v1, "value":Ljava/lang/Number;, "TT;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyIntegerProperty$1;->val$property:Ljavafx/beans/property/ReadOnlyProperty;

    invoke-interface {v1}, Ljavafx/beans/property/ReadOnlyProperty;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyIntegerProperty$1;
    return-object v0
.end method
