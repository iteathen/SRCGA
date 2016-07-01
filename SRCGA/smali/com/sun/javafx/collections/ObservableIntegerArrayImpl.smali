.class public Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
.super Ljavafx/collections/ObservableArrayBase;
.source "ObservableIntegerArrayImpl.java"

# interfaces
.implements Ljavafx/collections/ObservableIntegerArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/collections/ObservableArrayBase",
        "<",
        "Ljavafx/collections/ObservableIntegerArray;",
        ">;",
        "Ljavafx/collections/ObservableIntegerArray;"
    }
.end annotation


# static fields
.field private static final INITIAL:[I

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field private array:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->INITIAL:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ObservableArrayBase;-><init>()V

    .line 38
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->INITIAL:[I

    iput-object v2, v1, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableIntegerArray;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/ObservableArrayBase;-><init>()V

    .line 38
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->INITIAL:[I

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->setAll(Ljavafx/collections/ObservableIntegerArray;)V

    .line 61
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "elements":[I
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/ObservableArrayBase;-><init>()V

    .line 38
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->INITIAL:[I

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 52
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->setAll([I)V

    .line 53
    return-void
.end method

.method private addAllInternal(Ljavafx/collections/ObservableIntegerArray;II)V
    .locals 10

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->growCapacity(I)V

    .line 75
    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Ljavafx/collections/ObservableIntegerArray;->copyTo(I[III)V

    .line 76
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 77
    move-object v4, v0

    move v5, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v7, v3

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private addAllInternal([III)V
    .locals 10

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":[I
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->growCapacity(I)V

    .line 82
    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 84
    move-object v4, v0

    move v5, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v7, v3

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private growCapacity(I)V
    .locals 9

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "length":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v6, v1

    add-int/2addr v5, v6

    move v2, v5

    .line 240
    .local v2, "minCapacity":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    array-length v5, v5

    move v3, v5

    .line 241
    .local v3, "oldCapacity":I
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    array-length v6, v6

    if-le v5, v6, :cond_3

    .line 242
    move v5, v3

    move v6, v3

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    move v4, v5

    .line 243
    .local v4, "newCapacity":I
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    move v5, v2

    move v4, v5

    .line 244
    :cond_0
    move v5, v4

    const v6, 0x7ffffff7

    if-le v5, v6, :cond_1

    move v5, v2

    invoke-static {v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->hugeCapacity(I)I

    move-result v5

    move v4, v5

    .line 245
    :cond_1
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->ensureCapacity(I)V

    .line 246
    .line 249
    .end local v4    # "newCapacity":I
    :cond_2
    return-void

    .line 246
    :cond_3
    move v5, v1

    if-lez v5, :cond_2

    move v5, v2

    if-gez v5, :cond_2

    .line 247
    new-instance v5, Ljava/lang/OutOfMemoryError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v5
.end method

.method private static hugeCapacity(I)I
    .locals 4

    .prologue
    .line 259
    move v0, p0

    .local v0, "minCapacity":I
    move v1, v0

    if-gez v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/OutOfMemoryError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1

    .line 261
    :cond_0
    move v1, v0

    const v2, 0x7ffffff7

    if-le v1, v2, :cond_1

    const v1, 0x7fffffff

    :goto_0
    move v0, v1

    .end local v0    # "minCapacity":I
    return v0

    .restart local v0    # "minCapacity":I
    :cond_1
    const v1, 0x7ffffff7

    goto :goto_0
.end method

.method private rangeCheck(I)V
    .locals 6

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "size":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 277
    :cond_0
    return-void
.end method

.method private rangeCheck(Ljavafx/collections/ObservableIntegerArray;II)V
    .locals 8

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 281
    :cond_0
    move v4, v2

    if-ltz v4, :cond_1

    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 282
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 284
    :cond_2
    move v4, v3

    if-gez v4, :cond_3

    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 285
    :cond_3
    return-void
.end method

.method private rangeCheck([III)V
    .locals 8

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":[I
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 289
    :cond_0
    move v4, v2

    if-ltz v4, :cond_1

    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    move-object v5, v1

    array-length v5, v5

    if-le v4, v5, :cond_2

    .line 290
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 292
    :cond_2
    move v4, v3

    if-gez v4, :cond_3

    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 293
    :cond_3
    return-void
.end method

.method private setAllInternal(Ljavafx/collections/ObservableIntegerArray;II)V
    .locals 10

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size()I

    move-result v5

    move v6, v3

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 111
    .local v4, "sizeChanged":Z
    move-object v5, v1

    move-object v6, v0

    if-ne v5, v6, :cond_2

    .line 112
    move v5, v2

    if-nez v5, :cond_1

    .line 113
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->resize(I)V

    .line 126
    :goto_1
    return-void

    .line 110
    .end local v4    # "sizeChanged":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 115
    .restart local v4    # "sizeChanged":Z
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    const/4 v8, 0x0

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 117
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    goto :goto_1

    .line 120
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 121
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->ensureCapacity(I)V

    .line 122
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    const/4 v8, 0x0

    move v9, v3

    invoke-interface {v5, v6, v7, v8, v9}, Ljavafx/collections/ObservableIntegerArray;->copyTo(I[III)V

    .line 123
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 124
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    goto :goto_1
.end method

.method private setAllInternal([III)V
    .locals 10

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":[I
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size()I

    move-result v5

    move v6, v3

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 130
    .local v4, "sizeChanged":Z
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 131
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->ensureCapacity(I)V

    .line 132
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    const/4 v8, 0x0

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 134
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    .line 135
    return-void

    .line 129
    .end local v4    # "sizeChanged":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljavafx/collections/ObservableIntegerArray;)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->addAllInternal(Ljavafx/collections/ObservableIntegerArray;II)V

    .line 90
    return-void
.end method

.method public addAll(Ljavafx/collections/ObservableIntegerArray;II)V
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(Ljavafx/collections/ObservableIntegerArray;II)V

    .line 100
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->addAllInternal(Ljavafx/collections/ObservableIntegerArray;II)V

    .line 101
    return-void
.end method

.method public varargs addAll([I)V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "elements":[I
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->addAllInternal([III)V

    .line 95
    return-void
.end method

.method public addAll([III)V
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":[I
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck([III)V

    .line 106
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->addAllInternal([III)V

    .line 107
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->resize(I)V

    .line 66
    return-void
.end method

.method public copyTo(ILjavafx/collections/ObservableIntegerArray;II)V
    .locals 10

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "srcIndex":I
    move-object v2, p2

    .local v2, "dest":Ljavafx/collections/ObservableIntegerArray;
    move v3, p3

    .local v3, "destIndex":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(I)V

    .line 214
    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v8, v1

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Ljavafx/collections/ObservableIntegerArray;->set(I[III)V

    .line 215
    return-void
.end method

.method public copyTo(I[III)V
    .locals 10

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "srcIndex":I
    move-object v2, p2

    .local v2, "dest":[I
    move v3, p3

    .local v3, "destIndex":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(I)V

    .line 208
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    array-length v2, v2

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 254
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v4, v1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    .line 256
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(I)V

    .line 185
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    return v0
.end method

.method public resize(I)V
    .locals 9

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "newSize":I
    move v4, v1

    if-gez v4, :cond_0

    .line 220
    new-instance v4, Ljava/lang/NegativeArraySizeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t resize to negative value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->ensureCapacity(I)V

    .line 223
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 224
    .local v2, "minSize":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v5, v1

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 225
    .local v3, "sizeChanged":Z
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    .line 226
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 227
    move-object v4, v0

    move v5, v3

    move v6, v2

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    .line 228
    return-void

    .line 224
    .end local v3    # "sizeChanged":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public set(II)V
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(I)V

    .line 191
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v4, v1

    move v5, v2

    aput v5, v3, v4

    .line 192
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    .line 193
    return-void
.end method

.method public set(ILjavafx/collections/ObservableIntegerArray;II)V
    .locals 10

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "destIndex":I
    move-object v2, p2

    .local v2, "src":Ljavafx/collections/ObservableIntegerArray;
    move v3, p3

    .local v3, "srcIndex":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(I)V

    .line 169
    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v8, v1

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Ljavafx/collections/ObservableIntegerArray;->copyTo(I[III)V

    .line 170
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v1

    move v8, v1

    move v9, v4

    add-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    .line 171
    return-void
.end method

.method public set(I[III)V
    .locals 10

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "destIndex":I
    move-object v2, p2

    .local v2, "src":[I
    move v3, p3

    .local v3, "srcIndex":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(I)V

    .line 162
    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v8, v1

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v1

    move v8, v1

    move v9, v4

    add-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->fireChange(ZII)V

    .line 164
    return-void
.end method

.method public setAll(Ljavafx/collections/ObservableIntegerArray;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->setAllInternal(Ljavafx/collections/ObservableIntegerArray;II)V

    .line 140
    return-void
.end method

.method public setAll(Ljavafx/collections/ObservableIntegerArray;II)V
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/collections/ObservableIntegerArray;
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(Ljavafx/collections/ObservableIntegerArray;II)V

    .line 145
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->setAllInternal(Ljavafx/collections/ObservableIntegerArray;II)V

    .line 146
    return-void
.end method

.method public varargs setAll([I)V
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":[I
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->setAllInternal([III)V

    .line 157
    return-void
.end method

.method public setAll([III)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "src":[I
    move v2, p2

    .local v2, "srcIndex":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck([III)V

    .line 151
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->setAllInternal([III)V

    .line 152
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    return v0
.end method

.method public toArray(I[II)[I
    .locals 9

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "dest":[I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move v5, v1

    move v6, v3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->rangeCheck(I)V

    .line 198
    move-object v4, v2

    if-eqz v4, :cond_0

    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 199
    :cond_0
    move v4, v3

    new-array v4, v4, [I

    move-object v2, v4

    .line 201
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    return-object v0
.end method

.method public toArray([I)[I
    .locals 7

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v1, p1

    .local v1, "dest":[I
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size()I

    move-result v2

    move-object v3, v1

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 176
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size()I

    move-result v2

    new-array v2, v2, [I

    move-object v1, v2

    .line 178
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    if-nez v4, :cond_0

    .line 298
    const-string v4, "null"

    move-object v0, v4

    .line 309
    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    .local v1, "iMax":I
    :goto_0
    return-object v0

    .line 300
    .end local v1    # "iMax":I
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    .line 301
    .restart local v1    # "iMax":I
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 302
    const-string v4, "[]"

    move-object v0, v4

    goto :goto_0

    .line 304
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    .line 305
    .local v2, "b":Ljava/lang/StringBuilder;
    move-object v4, v2

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    const/4 v4, 0x0

    move v3, v4

    .line 307
    .local v3, "i":I
    :goto_1
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    move v6, v3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 308
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_2

    .line 309
    move-object v4, v2

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 310
    :cond_2
    move-object v4, v2

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public trimToSize()V
    .locals 7

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    if-eq v2, v3, :cond_0

    .line 269
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    new-array v2, v2, [I

    move-object v1, v2

    .line 270
    .local v1, "newArray":[I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->size:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;->array:[I

    .line 273
    .end local v1    # "newArray":[I
    :cond_0
    return-void
.end method
