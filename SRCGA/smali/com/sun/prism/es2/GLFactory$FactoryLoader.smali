.class Lcom/sun/prism/es2/GLFactory$FactoryLoader;
.super Ljava/lang/Object;
.source "GLFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/GLFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lcom/sun/prism/es2/GLFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final factoryClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory$FactoryLoader;
    move-object v1, p1

    .local v1, "factoryClassName":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/es2/GLFactory$FactoryLoader;->factoryClassName:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public run()Lcom/sun/prism/es2/GLFactory;
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory$FactoryLoader;
    const/4 v3, 0x0

    move-object v1, v3

    .line 108
    .local v1, "factory":Lcom/sun/prism/es2/GLFactory;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/prism/es2/GLFactory$FactoryLoader;->factoryClassName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/es2/GLFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 115
    .line 116
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory$FactoryLoader;
    return-object v0

    .line 109
    .restart local v0    # "this":Lcom/sun/prism/es2/GLFactory$FactoryLoader;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 110
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLFactory.static - Platform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.name"

    .line 111
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - not available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/GLFactory$FactoryLoader;->factoryClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLFactory$FactoryLoader;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/es2/GLFactory$FactoryLoader;->run()Lcom/sun/prism/es2/GLFactory;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLFactory$FactoryLoader;
    return-object v0
.end method
