.class abstract Ljavafx/scene/Node$LazyBoundsProperty;
.super Ljavafx/beans/property/ReadOnlyObjectProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LazyBoundsProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectProperty",
        "<",
        "Ljavafx/geometry/Bounds;",
        ">;"
    }
.end annotation


# instance fields
.field private bounds:Ljavafx/geometry/Bounds;

.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 9276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node$1;)V
    .locals 3

    .prologue
    .line 9276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node$LazyBoundsProperty;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Ljavafx/scene/Node$LazyBoundsProperty;)Z
    .locals 2

    .prologue
    .line 9276
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$LazyBoundsProperty;->valid:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$LazyBoundsProperty;
    return v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 9285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9286
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/geometry/Bounds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/geometry/Bounds;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9296
    return-void
.end method

.method protected abstract computeBounds()Ljavafx/geometry/Bounds;
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$LazyBoundsProperty;->get()Ljavafx/geometry/Bounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$LazyBoundsProperty;
    return-object v0
.end method

.method public get()Ljavafx/geometry/Bounds;
    .locals 3

    .prologue
    .line 9305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$LazyBoundsProperty;->valid:Z

    if-nez v1, :cond_0

    .line 9306
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$LazyBoundsProperty;->computeBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node$LazyBoundsProperty;->bounds:Ljavafx/geometry/Bounds;

    .line 9307
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node$LazyBoundsProperty;->valid:Z

    .line 9310
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$LazyBoundsProperty;->bounds:Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$LazyBoundsProperty;
    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 9314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$LazyBoundsProperty;->valid:Z

    if-eqz v1, :cond_0

    .line 9315
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node$LazyBoundsProperty;->valid:Z

    .line 9316
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 9318
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 9290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9291
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/geometry/Bounds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyBoundsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/geometry/Bounds;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyBoundsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9301
    return-void
.end method
