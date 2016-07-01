.class abstract Ljavafx/scene/Node$LazyTransformProperty;
.super Ljavafx/beans/property/ReadOnlyObjectProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LazyTransformProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectProperty",
        "<",
        "Ljavafx/scene/transform/Transform;",
        ">;"
    }
.end annotation


# static fields
.field protected static final INVALID:I = 0x1

.field protected static final VALID:I = 0x0

.field protected static final VALIDITY_UNKNOWN:I = 0x2


# instance fields
.field private canReuse:Z

.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private transform:Ljavafx/scene/transform/Transform;

.field protected valid:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 9207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;-><init>()V

    .line 9213
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    .line 9218
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->canReuse:Z

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node$1;)V
    .locals 3

    .prologue
    .line 9207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node$LazyTransformProperty;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/Node$LazyTransformProperty;)Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 9207
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->transform:Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$LazyTransformProperty;
    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 9222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9223
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/scene/transform/Transform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/scene/transform/Transform;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9233
    return-void
.end method

.method protected abstract computeTransform(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
.end method

.method protected abstract computeValidity()I
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$LazyTransformProperty;->get()Ljavafx/scene/transform/Transform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$LazyTransformProperty;
    return-object v0
.end method

.method public get()Ljavafx/scene/transform/Transform;
    .locals 3

    .prologue
    .line 9253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$LazyTransformProperty;->getInternalValue()Ljavafx/scene/transform/Transform;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->transform:Ljavafx/scene/transform/Transform;

    .line 9254
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->canReuse:Z

    .line 9255
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->transform:Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$LazyTransformProperty;
    return-object v0
.end method

.method protected getInternalValue()Ljavafx/scene/transform/Transform;
    .locals 4

    .prologue
    .line 9241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 9242
    invoke-virtual {v1}, Ljavafx/scene/Node$LazyTransformProperty;->computeValidity()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 9243
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Node$LazyTransformProperty;->canReuse:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyTransformProperty;->transform:Ljavafx/scene/transform/Transform;

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/scene/Node$LazyTransformProperty;->computeTransform(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->transform:Ljavafx/scene/transform/Transform;

    .line 9244
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->canReuse:Z

    .line 9245
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$LazyTransformProperty;->validityKnown()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iput v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    .line 9248
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->transform:Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$LazyTransformProperty;
    return-object v0

    .line 9243
    .restart local v0    # "this":Ljavafx/scene/Node$LazyTransformProperty;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 9245
    :cond_3
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 9265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 9266
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    .line 9267
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 9269
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 9227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9228
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/scene/transform/Transform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/scene/transform/Transform;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$LazyTransformProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 9238
    return-void
.end method

.method protected abstract validityKnown()Z
.end method

.method public validityUnknown()V
    .locals 3

    .prologue
    .line 9259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$LazyTransformProperty;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    if-nez v1, :cond_0

    .line 9260
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Ljavafx/scene/Node$LazyTransformProperty;->valid:I

    .line 9262
    :cond_0
    return-void
.end method
