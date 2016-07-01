.class public Lcom/sun/javafx/UnmodifiableArrayList;
.super Ljava/util/AbstractList;
.source "UnmodifiableArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sun/javafx/UnmodifiableArrayList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/UnmodifiableArrayList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/UnmodifiableArrayList;, "Lcom/sun/javafx/UnmodifiableArrayList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move v2, p2

    .local v2, "size":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/util/AbstractList;-><init>()V

    .line 51
    sget-boolean v3, Lcom/sun/javafx/UnmodifiableArrayList;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    move v3, v2

    if-nez v3, :cond_2

    .line 52
    :cond_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/UnmodifiableArrayList;->size:I

    .line 53
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/UnmodifiableArrayList;->elements:[Ljava/lang/Object;

    .line 54
    return-void

    .line 51
    :cond_1
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-le v3, v4, :cond_0

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/UnmodifiableArrayList;, "Lcom/sun/javafx/UnmodifiableArrayList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/UnmodifiableArrayList;->elements:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/UnmodifiableArrayList;, "Lcom/sun/javafx/UnmodifiableArrayList<TT;>;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/UnmodifiableArrayList;, "Lcom/sun/javafx/UnmodifiableArrayList<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/UnmodifiableArrayList;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/UnmodifiableArrayList;, "Lcom/sun/javafx/UnmodifiableArrayList<TT;>;"
    return v0
.end method
