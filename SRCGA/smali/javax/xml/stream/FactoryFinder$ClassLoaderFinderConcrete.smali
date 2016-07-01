.class Ljavax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;
.super Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/stream/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassLoaderFinderConcrete"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;-><init>(Ljavax/xml/stream/FactoryFinder$1;)V

    return-void
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;
    return-object v0
.end method
