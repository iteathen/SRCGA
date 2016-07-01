.class Lcom/sun/javafx/collections/ListListenerHelper$Generic;
.super Lcom/sun/javafx/collections/ListListenerHelper;
.source "ListListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ListListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/collections/ListListenerHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 9

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener0":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "listener1":Ljavafx/beans/InvalidationListener;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/ListListenerHelper;-><init>()V

    .line 179
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/InvalidationListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 180
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/collections/ListListenerHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "changeListener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/ListListenerHelper;-><init>()V

    .line 189
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/InvalidationListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 190
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    .line 191
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/collections/ListChangeListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    .line 192
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/ListChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/collections/ListListenerHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener0":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, p2

    .local v2, "listener1":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/ListListenerHelper;-><init>()V

    .line 184
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/collections/ListChangeListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    .line 185
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ListChangeListener;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/ListChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/collections/ListListenerHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;-><init>(Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper$Generic;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/ListListenerHelper$Generic",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_0

    .line 198
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 199
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    .line 214
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    return-object v0

    .line 201
    .restart local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    move v2, v4

    .line 202
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 203
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 204
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 205
    .line 212
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 203
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 206
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    .line 207
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 208
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 209
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_2
.end method

.method protected bridge synthetic addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper$Generic;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    if-nez v4, :cond_0

    .line 255
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/ListChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    .line 256
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    .line 271
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    return-object v0

    .line 258
    .restart local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    array-length v4, v4

    move v2, v4

    .line 259
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 260
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 261
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/ListChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    .line 262
    .line 269
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 260
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 262
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 263
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    .line 264
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 265
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 266
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/ListChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    goto :goto_2
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v2, v9

    .line 312
    .local v2, "curInvalidationList":[Ljavafx/beans/InvalidationListener;
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move v3, v9

    .line 313
    .local v3, "curInvalidationSize":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v4, v9

    .line 314
    .local v4, "curChangeList":[Ljavafx/collections/ListChangeListener;, "[Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move v5, v9

    .line 317
    .local v5, "curChangeSize":I
    move-object v9, v0

    const/4 v10, 0x1

    :try_start_0
    iput-boolean v10, v9, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_0

    .line 320
    move-object v9, v2

    move v10, v6

    :try_start_1
    aget-object v9, v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .line 318
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 322
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 334
    .end local v6    # "i":I
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    move-object v9, v8

    throw v9

    .line 325
    .restart local v6    # "i":I
    :cond_0
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 326
    move-object v9, v1

    :try_start_3
    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    move-object v9, v4

    move v10, v6

    :try_start_4
    aget-object v9, v9, v10

    move-object v10, v1

    invoke-interface {v9, v10}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    .line 325
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 329
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 330
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 334
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    .line 335
    .line 336
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v5, :cond_1

    .line 220
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    if-ge v5, v6, :cond_1

    .line 221
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 223
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 224
    new-instance v5, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;-><init>(Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V

    move-object v0, v5

    .line 249
    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 226
    .restart local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 227
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    .line 249
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 228
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    if-nez v5, :cond_3

    .line 229
    new-instance v5, Lcom/sun/javafx/collections/ListListenerHelper$SingleInvalidation;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x1

    move v9, v2

    rsub-int/lit8 v8, v9, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/ListListenerHelper$SingleInvalidation;-><init>(Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 231
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 232
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v5

    .line 233
    .local v4, "oldListeners":[Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 234
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/InvalidationListener;

    iput-object v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 235
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 238
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_5
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    .line 241
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 242
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 245
    :cond_6
    goto :goto_2

    .line 220
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/InvalidationListener;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    if-eqz v5, :cond_1

    .line 277
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    if-ge v5, v6, :cond_1

    .line 278
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 279
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 280
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 281
    new-instance v5, Lcom/sun/javafx/collections/ListListenerHelper$SingleInvalidation;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/ListListenerHelper$SingleInvalidation;-><init>(Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V

    move-object v0, v5

    .line 306
    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 283
    .restart local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$Generic;, "Lcom/sun/javafx/collections/ListListenerHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    .line 284
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    .line 306
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 285
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_3

    .line 286
    new-instance v5, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    const/4 v8, 0x1

    move v9, v2

    rsub-int/lit8 v8, v9, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;-><init>(Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 288
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 289
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v4, v5

    .line 290
    .local v4, "oldListeners":[Ljavafx/collections/ListChangeListener;, "[Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 291
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/collections/ListChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    .line 292
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 295
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    :cond_5
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    .line 298
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 299
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ListListenerHelper$Generic;->changeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 302
    :cond_6
    goto :goto_2

    .line 277
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/collections/ListChangeListener;, "[Ljavafx/collections/ListChangeListener<-TE;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
