.class abstract Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/stream/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClassLoaderFinder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/xml/stream/FactoryFinder$1;)V
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;
    move-object v1, p1

    .local v1, "x0":Ljavax/xml/stream/FactoryFinder$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getContextClassLoader()Ljava/lang/ClassLoader;
.end method
