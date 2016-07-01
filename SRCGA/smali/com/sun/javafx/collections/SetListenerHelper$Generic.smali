.class Lcom/sun/javafx/collections/SetListenerHelper$Generic;
.super Lcom/sun/javafx/collections/SetListenerHelper;
.source "SetListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/SetListenerHelper;
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
        "Lcom/sun/javafx/collections/SetListenerHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/SetChangeListener",
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
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener0":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "listener1":Ljavafx/beans/InvalidationListener;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/SetListenerHelper;-><init>()V

    .line 178
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

    iput-object v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 179
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/collections/SetListenerHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "changeListener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/SetListenerHelper;-><init>()V

    .line 188
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/InvalidationListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 189
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    .line 190
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/collections/SetChangeListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    .line 191
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/SetChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/collections/SetListenerHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener0":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, p2

    .local v2, "listener1":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/SetListenerHelper;-><init>()V

    .line 183
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/collections/SetChangeListener;

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

    iput-object v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    .line 184
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/SetChangeListener;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/SetChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/collections/SetListenerHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;-><init>(Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper$Generic;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/SetListenerHelper$Generic",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_0

    .line 197
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 198
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    .line 213
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    return-object v0

    .line 200
    .restart local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    move v2, v4

    .line 201
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 202
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 203
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 204
    .line 211
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 202
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 205
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    .line 206
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 207
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 208
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_2
.end method

.method protected bridge synthetic addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper$Generic;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    if-nez v4, :cond_0

    .line 254
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/SetChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    .line 255
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    .line 270
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    return-object v0

    .line 257
    .restart local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    array-length v4, v4

    move v2, v4

    .line 258
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 259
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 260
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/SetChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    .line 261
    .line 268
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 259
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 261
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 262
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    .line 263
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 264
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 265
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/SetChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    goto :goto_2
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v2, v9

    .line 311
    .local v2, "curInvalidationList":[Ljavafx/beans/InvalidationListener;
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move v3, v9

    .line 312
    .local v3, "curInvalidationSize":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v4, v9

    .line 313
    .local v4, "curChangeList":[Ljavafx/collections/SetChangeListener;, "[Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move v5, v9

    .line 316
    .local v5, "curChangeSize":I
    move-object v9, v0

    const/4 v10, 0x1

    :try_start_0
    iput-boolean v10, v9, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_0

    .line 319
    move-object v9, v2

    move v10, v6

    :try_start_1
    aget-object v9, v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/SetChangeListener$Change;->getSet()Ljavafx/collections/ObservableSet;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    .line 317
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 320
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 321
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

    .line 332
    .end local v6    # "i":I
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    move-object v9, v8

    throw v9

    .line 324
    .restart local v6    # "i":I
    :cond_0
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 326
    move-object v9, v4

    move v10, v6

    :try_start_3
    aget-object v9, v9, v10

    move-object v10, v1

    invoke-interface {v9, v10}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    .line 324
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 327
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 328
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 332
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    .line 333
    .line 334
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v5, :cond_1

    .line 219
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    if-ge v5, v6, :cond_1

    .line 220
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 221
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 222
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 223
    new-instance v5, Lcom/sun/javafx/collections/SetListenerHelper$SingleChange;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/SetListenerHelper$SingleChange;-><init>(Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V

    move-object v0, v5

    .line 248
    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 225
    .restart local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 226
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    .line 248
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 227
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    if-nez v5, :cond_3

    .line 228
    new-instance v5, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x1

    move v9, v2

    rsub-int/lit8 v8, v9, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;-><init>(Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 230
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 231
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v5

    .line 232
    .local v4, "oldListeners":[Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 233
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/InvalidationListener;

    iput-object v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 234
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 237
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    :cond_5
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    .line 240
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 241
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 244
    :cond_6
    goto :goto_2

    .line 219
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/InvalidationListener;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    if-eqz v5, :cond_1

    .line 276
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    if-ge v5, v6, :cond_1

    .line 277
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 278
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 279
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 280
    new-instance v5, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;-><init>(Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V

    move-object v0, v5

    .line 305
    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 282
    .restart local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$Generic;, "Lcom/sun/javafx/collections/SetListenerHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    .line 283
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    .line 305
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 284
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_3

    .line 285
    new-instance v5, Lcom/sun/javafx/collections/SetListenerHelper$SingleChange;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    const/4 v8, 0x1

    move v9, v2

    rsub-int/lit8 v8, v9, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/SetListenerHelper$SingleChange;-><init>(Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 287
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 288
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v4, v5

    .line 289
    .local v4, "oldListeners":[Ljavafx/collections/SetChangeListener;, "[Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 290
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/collections/SetChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    .line 291
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 294
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    :cond_5
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    .line 297
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 298
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/SetListenerHelper$Generic;->changeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 301
    :cond_6
    goto :goto_2

    .line 276
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/collections/SetChangeListener;, "[Ljavafx/collections/SetChangeListener<-TE;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
