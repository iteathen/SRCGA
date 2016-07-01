.class final Ljavafx/scene/control/TextArea$ParagraphList;
.super Ljava/util/AbstractList;
.source "TextArea.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParagraphList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljavafx/collections/ObservableList",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljavafx/scene/control/TextArea$TextAreaContent;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/TextArea$1;)V
    .locals 3

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/TextArea$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TextArea$ParagraphList;-><init>()V

    return-void
.end method

.method static synthetic access$102(Ljavafx/scene/control/TextArea$ParagraphList;Ljavafx/scene/control/TextArea$TextAreaContent;)Ljavafx/scene/control/TextArea$TextAreaContent;
    .locals 7

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TextArea$ParagraphList;
    return-object v0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "paragraphs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public varargs addAll([Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "paragraphs":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public bridge synthetic addAll([Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea$ParagraphList;->addAll([Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphList;
    return v0
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    invoke-static {v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$300(Ljavafx/scene/control/TextArea$TextAreaContent;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$302(Ljavafx/scene/control/TextArea$TextAreaContent;Lcom/sun/javafx/collections/ListListenerHelper;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v2

    .line 393
    return-void
.end method

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-Ljava/lang/CharSequence;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    invoke-static {v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$300(Ljavafx/scene/control/TextArea$TextAreaContent;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$302(Ljavafx/scene/control/TextArea$TextAreaContent;Lcom/sun/javafx/collections/ListListenerHelper;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v2

    .line 368
    return-void
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    invoke-static {v2}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$200(Ljavafx/scene/control/TextArea$TextAreaContent;)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphList;
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea$ParagraphList;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphList;
    return-object v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public varargs removeAll([Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public bridge synthetic removeAll([Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea$ParagraphList;->removeAll([Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphList;
    return v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    invoke-static {v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$300(Ljavafx/scene/control/TextArea$TextAreaContent;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$302(Ljavafx/scene/control/TextArea$TextAreaContent;Lcom/sun/javafx/collections/ListListenerHelper;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v2

    .line 398
    return-void
.end method

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-Ljava/lang/CharSequence;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    invoke-static {v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$300(Ljavafx/scene/control/TextArea$TextAreaContent;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$302(Ljavafx/scene/control/TextArea$TextAreaContent;Lcom/sun/javafx/collections/ListListenerHelper;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v2

    .line 373
    return-void
.end method

.method public varargs retainAll([Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public bridge synthetic retainAll([Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea$ParagraphList;->retainAll([Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphList;
    return v0
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "paragraphs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public varargs setAll([Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    .local v1, "paragraphs":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public bridge synthetic setAll([Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea$ParagraphList;->setAll([Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphList;
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$ParagraphList;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$ParagraphList;->content:Ljavafx/scene/control/TextArea$TextAreaContent;

    invoke-static {v1}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$200(Ljavafx/scene/control/TextArea$TextAreaContent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$ParagraphList;
    return v0
.end method
