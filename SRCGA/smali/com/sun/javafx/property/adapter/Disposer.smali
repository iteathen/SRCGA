.class public Lcom/sun/javafx/property/adapter/Disposer;
.super Ljava/lang/Object;
.source "Disposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static disposerInstance:Lcom/sun/javafx/property/adapter/Disposer;

.field private static final queue:Ljava/lang/ref/ReferenceQueue;

.field private static final records:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/sun/javafx/property/adapter/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/property/adapter/Disposer;->records:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/sun/javafx/property/adapter/Disposer;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/property/adapter/Disposer;-><init>()V

    sput-object v0, Lcom/sun/javafx/property/adapter/Disposer;->disposerInstance:Lcom/sun/javafx/property/adapter/Disposer;

    .line 53
    new-instance v0, Lcom/sun/javafx/property/adapter/Disposer$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/property/adapter/Disposer$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/Disposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sun/javafx/property/adapter/Disposer;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/property/adapter/Disposer;->disposerInstance:Lcom/sun/javafx/property/adapter/Disposer;

    return-object v0
.end method

.method public static addRecord(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "rec":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/ref/PhantomReference;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/property/adapter/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v5, v6}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v2, v3

    .line 83
    .local v2, "ref":Ljava/lang/ref/PhantomReference;
    sget-object v3, Lcom/sun/javafx/property/adapter/Disposer;->records:Ljava/util/Map;

    move-object v4, v2

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/Disposer;
    :goto_0
    :try_start_0
    sget-object v3, Lcom/sun/javafx/property/adapter/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v3

    move-object v1, v3

    .line 90
    .local v1, "obj":Ljava/lang/ref/Reference;
    move-object v3, v1

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    .line 91
    sget-object v3, Lcom/sun/javafx/property/adapter/Disposer;->records:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v2, v3

    .line 92
    .local v2, "rec":Ljava/lang/Runnable;
    move-object v3, v2

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 93
    .end local v1    # "obj":Ljava/lang/ref/Reference;
    .end local v2    # "rec":Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while removing reference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    goto :goto_0
.end method
