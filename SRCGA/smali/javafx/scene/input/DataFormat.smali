.class public Ljavafx/scene/input/DataFormat;
.super Ljava/lang/Object;
.source "DataFormat.java"


# static fields
.field private static final DATA_FORMAT_LIST:Lcom/sun/javafx/util/WeakReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/util/WeakReferenceQueue",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAG_IMAGE:Ljavafx/scene/input/DataFormat;

.field private static final DRAG_IMAGE_OFFSET:Ljavafx/scene/input/DataFormat;

.field public static final FILES:Ljavafx/scene/input/DataFormat;

.field public static final HTML:Ljavafx/scene/input/DataFormat;

.field public static final IMAGE:Ljavafx/scene/input/DataFormat;

.field public static final PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

.field public static final RTF:Ljavafx/scene/input/DataFormat;

.field public static final URL:Ljavafx/scene/input/DataFormat;


# instance fields
.field private final identifier:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 51
    new-instance v0, Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Lcom/sun/javafx/util/WeakReferenceQueue;-><init>()V

    sput-object v0, Ljavafx/scene/input/DataFormat;->DATA_FORMAT_LIST:Lcom/sun/javafx/util/WeakReferenceQueue;

    .line 56
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "text/plain"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    .line 61
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "text/html"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    .line 66
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "text/rtf"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    .line 71
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "text/uri-list"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    .line 79
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "application/x-java-rawimage"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    .line 84
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "application/x-java-file-list"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "java.file-list"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    .line 91
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "application/x-java-drag-image"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->DRAG_IMAGE:Ljavafx/scene/input/DataFormat;

    .line 98
    new-instance v0, Ljavafx/scene/input/DataFormat;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "application/x-java-drag-image-offset"

    aput-object v5, v3, v4

    invoke-direct {v1, v2}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DataFormat;->DRAG_IMAGE_OFFSET:Ljavafx/scene/input/DataFormat;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 11
    .param p1    # [Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "ids"
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DataFormat;
    move-object v1, p1

    .local v1, "ids":[Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v6, Ljavafx/scene/input/DataFormat;->DATA_FORMAT_LIST:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-virtual {v6}, Lcom/sun/javafx/util/WeakReferenceQueue;->cleanup()V

    .line 134
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 135
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 136
    .local v5, "id":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v6}, Ljavafx/scene/input/DataFormat;->lookupMimeType(Ljava/lang/String;)Ljavafx/scene/input/DataFormat;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 137
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataFormat \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' already exists."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    .end local v5    # "id":Ljava/lang/String;
    :cond_1
    move-object v6, v0

    new-instance v7, Ljava/util/HashSet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    .line 147
    :goto_1
    sget-object v6, Ljavafx/scene/input/DataFormat;->DATA_FORMAT_LIST:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/util/WeakReferenceQueue;->add(Ljava/lang/Object;)V

    .line 148
    return-void

    .line 143
    :cond_2
    move-object v6, v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    goto :goto_1
.end method

.method public static lookupMimeType(Ljava/lang/String;)Ljavafx/scene/input/DataFormat;
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "mimeType":Ljava/lang/String;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 224
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 234
    .end local v0    # "mimeType":Ljava/lang/String;
    .local v1, "itr":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 227
    .end local v1    # "itr":Ljava/util/Iterator;
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljavafx/scene/input/DataFormat;->DATA_FORMAT_LIST:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-virtual {v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 228
    .restart local v1    # "itr":Ljava/util/Iterator;
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/input/DataFormat;

    move-object v2, v3

    .line 230
    .local v2, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/DataFormat;->getIdentifiers()Ljava/util/Set;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 233
    :cond_2
    goto :goto_1

    .line 234
    .end local v2    # "dataFormat":Ljavafx/scene/input/DataFormat;
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DataFormat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/DataFormat;

    if-nez v3, :cond_1

    .line 204
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 213
    .end local v0    # "this":Ljavafx/scene/input/DataFormat;
    :goto_0
    return v0

    .line 207
    .restart local v0    # "this":Ljavafx/scene/input/DataFormat;
    :cond_1
    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/DataFormat;

    move-object v2, v3

    .line 209
    .local v2, "otherDataFormat":Ljavafx/scene/input/DataFormat;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 213
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public final getIdentifiers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DataFormat;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DataFormat;
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DataFormat;
    const/4 v4, 0x7

    move v1, v4

    .line 190
    .local v1, "hash":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 191
    .local v3, "id":Ljava/lang/String;
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 192
    goto :goto_0

    .line 194
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    move v4, v1

    move v0, v4

    .end local v0    # "this":Ljavafx/scene/input/DataFormat;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DataFormat;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const-string v3, "[]"

    move-object v0, v3

    .line 179
    .end local v0    # "this":Ljavafx/scene/input/DataFormat;
    :goto_0
    return-object v0

    .line 165
    .restart local v0    # "this":Ljavafx/scene/input/DataFormat;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 167
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    move-object v3, v1

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 170
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 171
    .local v1, "b":Ljava/lang/StringBuilder;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DataFormat;->identifier:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 172
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v3

    .line 174
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    move-object v3, v1

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 178
    :cond_3
    move-object v3, v1

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v3

    .line 179
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
