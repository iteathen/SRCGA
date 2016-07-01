.class abstract Ljavafx/scene/transform/Transform$LazyBooleanProperty;
.super Ljavafx/beans/property/ReadOnlyBooleanProperty;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/transform/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LazyBooleanProperty"
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyBooleanProperty;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/transform/Transform$1;)V
    .locals 3

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/transform/Transform$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/transform/Transform$LazyBooleanProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 590
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 600
    return-void
.end method

.method protected abstract computeValue()Z
.end method

.method public get()Z
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->valid:Z

    if-nez v1, :cond_0

    .line 610
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->computeValue()Z

    move-result v2

    iput-boolean v2, v1, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->value:Z

    .line 611
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->valid:Z

    .line 614
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->value:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    return v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->valid:Z

    if-eqz v1, :cond_0

    .line 619
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->valid:Z

    .line 620
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 622
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 595
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 605
    return-void
.end method
