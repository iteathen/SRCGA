.class Ljavafx/beans/binding/SetExpression$EmptyObservableSet;
.super Ljava/util/AbstractSet;
.source "SetExpression.java"

# interfaces
.implements Ljavafx/collections/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/SetExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyObservableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljavafx/collections/ObservableSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final iterator:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;-><init>()V

    sput-object v0, Ljavafx/beans/binding/SetExpression$EmptyObservableSet;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/SetExpression$1;)V
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/SetExpression$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/SetExpression$EmptyObservableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 106
    .local p0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    .local p1, "setChangeListener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    sget-object v1, Ljavafx/beans/binding/SetExpression$EmptyObservableSet;->iterator:Ljava/util/Iterator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 111
    .local p0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    .local p1, "setChangeListener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet;, "Ljavafx/beans/binding/SetExpression$EmptyObservableSet<TE;>;"
    return v0
.end method
