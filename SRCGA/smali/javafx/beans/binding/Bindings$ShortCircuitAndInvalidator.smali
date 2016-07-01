.class Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;
.super Ljava/lang/Object;
.source "Bindings.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortCircuitAndInvalidator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/binding/Bindings$BooleanAndBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4536
    const-class v0, Ljavafx/beans/binding/Bindings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/beans/binding/Bindings$BooleanAndBinding;)V
    .locals 7

    .prologue
    .line 4540
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;
    move-object v1, p1

    .local v1, "binding":Ljavafx/beans/binding/Bindings$BooleanAndBinding;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4541
    sget-boolean v2, Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 4542
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;->ref:Ljava/lang/ref/WeakReference;

    .line 4543
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/Bindings$BooleanAndBinding;Ljavafx/beans/binding/Bindings$1;)V
    .locals 5

    .prologue
    .line 4536
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/Bindings$BooleanAndBinding;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/binding/Bindings$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;-><init>(Ljavafx/beans/binding/Bindings$BooleanAndBinding;)V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 4547
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/Bindings$BooleanAndBinding;

    move-object v2, v3

    .line 4548
    .local v2, "binding":Ljavafx/beans/binding/Bindings$BooleanAndBinding;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 4549
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 4558
    :cond_0
    :goto_0
    return-void

    .line 4554
    :cond_1
    move-object v3, v2

    invoke-static {v3}, Ljavafx/beans/binding/Bindings$BooleanAndBinding;->access$100(Ljavafx/beans/binding/Bindings$BooleanAndBinding;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/beans/binding/Bindings$BooleanAndBinding;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-static {v3}, Ljavafx/beans/binding/Bindings$BooleanAndBinding;->access$100(Ljavafx/beans/binding/Bindings$BooleanAndBinding;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4555
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/beans/binding/Bindings$BooleanAndBinding;->invalidate()V

    goto :goto_0
.end method
