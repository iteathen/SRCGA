.class public abstract Lcom/sun/javafx/collections/VetoableListDecorator;
.super Ljava/lang/Object;
.source "VetoableListDecorator.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;,
        Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;,
        Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;,
        Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;,
        Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ObservableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/collections/ListListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final list:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private modCount:I


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "decorated":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/collections/VetoableListDecorator;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/collections/VetoableListDecorator;Ljava/util/List;ILjava/util/Collection;Z)V
    .locals 10

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/VetoableListDecorator;
    move-object v1, p1

    .local v1, "x1":Ljava/util/List;
    move v2, p2

    .local v2, "x2":I
    move-object v3, p3

    .local v3, "x3":Ljava/util/Collection;
    move v4, p4

    .local v4, "x4":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/collections/VetoableListDecorator;->removeFromList(Ljava/util/List;ILjava/util/Collection;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/collections/VetoableListDecorator;)I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/VetoableListDecorator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/VetoableListDecorator;
    return v0
.end method

.method static synthetic access$404(Lcom/sun/javafx/collections/VetoableListDecorator;)I
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/VetoableListDecorator;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/VetoableListDecorator;
    return v0
.end method

.method static synthetic access$406(Lcom/sun/javafx/collections/VetoableListDecorator;)I
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/VetoableListDecorator;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/VetoableListDecorator;
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/collections/VetoableListDecorator;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/VetoableListDecorator;->lambda$new$19(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$19(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    new-instance v3, Lcom/sun/javafx/collections/SourceAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/ListListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 78
    return-void
.end method

.method private removeFromList(Ljava/util/List;ILjava/util/Collection;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;I",
            "Ljava/util/Collection",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object/from16 v1, p1

    .local v1, "backingList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move/from16 v2, p2

    .local v2, "offset":I
    move-object/from16 v3, p3

    .local v3, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move/from16 v4, p4

    .local v4, "complement":Z
    const/4 v10, 0x2

    new-array v10, v10, [I

    move-object v5, v10

    .line 126
    .local v5, "toBeRemoved":[I
    const/4 v10, -0x1

    move v6, v10

    .line 127
    .local v6, "pointer":I
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move-object v11, v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 128
    move-object v10, v1

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 129
    .local v8, "el":Ljava/lang/Object;, "TE;"
    move-object v10, v3

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    move v11, v4

    xor-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 130
    move v10, v6

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 131
    move-object v10, v5

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v2

    move v13, v7

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 132
    move-object v10, v5

    move v11, v6

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    move v12, v2

    move v13, v7

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 133
    add-int/lit8 v6, v6, 0x2

    .line 127
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 135
    :cond_1
    move-object v10, v5

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move v11, v2

    move v12, v7

    add-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    .line 136
    move-object v10, v5

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v2

    move v13, v7

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    goto :goto_1

    .line 138
    :cond_2
    move-object v10, v5

    array-length v10, v10

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    new-array v10, v10, [I

    move-object v9, v10

    .line 139
    .local v9, "tmp":[I
    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v9

    const/4 v13, 0x0

    move-object v14, v5

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    move-object v10, v9

    move-object v5, v10

    .line 141
    move-object v10, v5

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v2

    move v13, v7

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 142
    move-object v10, v5

    move v11, v6

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    move v12, v2

    move v13, v7

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 143
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 148
    .end local v8    # "el":Ljava/lang/Object;, "TE;"
    .end local v9    # "tmp":[I
    :cond_3
    move v10, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 149
    move-object v10, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 151
    :cond_4
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v1

    aput v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 319
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    :try_start_0
    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 320
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .line 325
    return-void

    .line 321
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 322
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 323
    move-object v4, v3

    throw v4
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/collections/VetoableListDecorator;->size()I

    move-result v8

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/collections/VetoableListDecorator;->size()I

    move-result v8

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 208
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    :try_start_0
    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 210
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0

    .line 211
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 212
    .local v2, "ex":Ljava/lang/Exception;
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 213
    move-object v3, v2

    throw v3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v1

    aput v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 251
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    :try_start_0
    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 252
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v4

    move v3, v4

    .line 253
    .local v3, "ret":Z
    move v4, v3

    if-nez v4, :cond_0

    .line 254
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0

    .line 256
    .end local v3    # "ret":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 257
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 258
    move-object v4, v3

    throw v4
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/collections/VetoableListDecorator;->size()I

    move-result v8

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/collections/VetoableListDecorator;->size()I

    move-result v8

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 236
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    :try_start_0
    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 237
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    move v2, v3

    .line 238
    .local v2, "ret":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 239
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0

    .line 241
    .end local v2    # "ret":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 243
    move-object v3, v2

    throw v3
.end method

.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/VetoableListDecorator;->addAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 94
    return-void
.end method

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 84
    return-void
.end method

.method public clear()V
    .locals 9

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v2, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/VetoableListDecorator;->size()I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 296
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    :try_start_0
    iget v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 297
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .line 302
    return-void

    .line 298
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 300
    move-object v2, v1

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    new-instance v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/Iterator;I)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    new-instance v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/ListIterator;I)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    new-instance v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v7, v1

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    move v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/ListIterator;I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method protected varargs abstract onProposedChange(Ljava/util/List;[I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;[I)V"
        }
    .end annotation
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 331
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    :try_start_0
    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 332
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .line 333
    .local v2, "ret":Ljava/lang/Object;, "TE;"
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0

    .line 334
    .end local v2    # "ret":Ljava/lang/Object;, "TE;"
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 335
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 336
    move-object v3, v2

    throw v3
.end method

.method public remove(II)V
    .locals 11

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v4, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    aput v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 167
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    :try_start_0
    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 168
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->remove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 170
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 220
    .local v2, "i":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 221
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 222
    const/4 v3, 0x1

    move v0, v3

    .line 224
    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator;->removeFromList(Ljava/util/List;ILjava/util/Collection;Z)V

    .line 266
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    :try_start_0
    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 267
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    move v2, v3

    .line 268
    .local v2, "ret":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 269
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0

    .line 271
    .end local v2    # "ret":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 273
    move-object v3, v2

    throw v3
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/VetoableListDecorator;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 99
    return-void
.end method

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 89
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator;->removeFromList(Ljava/util/List;ILjava/util/Collection;Z)V

    .line 281
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    :try_start_0
    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 282
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    move v2, v3

    .line 283
    .local v2, "ret":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 284
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0

    .line 286
    .end local v2    # "ret":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 287
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 288
    move-object v3, v2

    throw v3
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/VetoableListDecorator;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 312
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/collections/VetoableListDecorator;->size()I

    move-result v8

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 115
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    :try_start_0
    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 116
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 117
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0

    .line 118
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator;->modCount:I

    .line 120
    move-object v3, v2

    throw v3
.end method

.method public varargs setAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/VetoableListDecorator;->setAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    new-instance v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move v8, v1

    move v9, v2

    invoke-interface {v7, v8, v9}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v7

    move v8, v1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/List;I)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator;->list:Ljavafx/collections/ObservableList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>;"
    return-object v0
.end method
