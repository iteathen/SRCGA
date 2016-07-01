.class Ljavafx/beans/binding/When$WhenListener;
.super Ljava/lang/Object;
.source "When.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhenListener"
.end annotation


# instance fields
.field private final condition:Ljavafx/beans/value/ObservableBooleanValue;

.field private final otherwiseValue:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation
.end field

.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/binding/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final thenValue:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableValue;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/binding/Binding",
            "<*>;",
            "Ljavafx/beans/value/ObservableBooleanValue;",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$WhenListener;
    move-object v1, p1

    .local v1, "binding":Ljavafx/beans/binding/Binding;, "Ljavafx/beans/binding/Binding<*>;"
    move-object v2, p2

    .local v2, "condition":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v3, p3

    .local v3, "thenValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v4, p4

    .local v4, "otherwiseValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Ljavafx/beans/binding/When$WhenListener;->ref:Ljava/lang/ref/WeakReference;

    .line 89
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/beans/binding/When$WhenListener;->condition:Ljavafx/beans/value/ObservableBooleanValue;

    .line 90
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/beans/binding/When$WhenListener;->thenValue:Ljavafx/beans/value/ObservableValue;

    .line 91
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/beans/binding/When$WhenListener;->otherwiseValue:Ljavafx/beans/value/ObservableValue;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/binding/When$1;)V
    .locals 11

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$WhenListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/Binding;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ObservableValue;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/value/ObservableValue;
    move-object/from16 v5, p5

    .local v5, "x4":Ljavafx/beans/binding/When$1;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/When$WhenListener;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableValue;)V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$WhenListener;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/Binding;

    move-object v2, v3

    .line 97
    .local v2, "binding":Ljavafx/beans/binding/Binding;, "Ljavafx/beans/binding/Binding<*>;"
    move-object v3, v2

    if-nez v3, :cond_2

    .line 98
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->condition:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 99
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->thenValue:Ljavafx/beans/value/ObservableValue;

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->thenValue:Ljavafx/beans/value/ObservableValue;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 102
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->otherwiseValue:Ljavafx/beans/value/ObservableValue;

    if-eqz v3, :cond_1

    .line 103
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->otherwiseValue:Ljavafx/beans/value/ObservableValue;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->condition:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v2

    invoke-interface {v3}, Ljavafx/beans/binding/Binding;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$WhenListener;->condition:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v3

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$WhenListener;->thenValue:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 110
    :cond_3
    move-object v3, v2

    invoke-interface {v3}, Ljavafx/beans/binding/Binding;->invalidate()V

    goto :goto_0
.end method
