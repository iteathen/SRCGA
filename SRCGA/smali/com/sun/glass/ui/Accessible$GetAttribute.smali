.class Lcom/sun/glass/ui/Accessible$GetAttribute;
.super Ljava/lang/Object;
.source "Accessible.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Accessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field attribute:Ljavafx/scene/AccessibleAttribute;

.field parameters:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/glass/ui/Accessible;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/Accessible;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$GetAttribute;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Accessible$GetAttribute;->this$0:Lcom/sun/glass/ui/Accessible;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/Accessible;Lcom/sun/glass/ui/Accessible$1;)V
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$GetAttribute;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/Accessible;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/glass/ui/Accessible$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/Accessible$GetAttribute;-><init>(Lcom/sun/glass/ui/Accessible;)V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$GetAttribute;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Accessible$GetAttribute;->this$0:Lcom/sun/glass/ui/Accessible;

    invoke-static {v5}, Lcom/sun/glass/ui/Accessible;->access$000(Lcom/sun/glass/ui/Accessible;)Lcom/sun/glass/ui/Accessible$EventHandler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/Accessible$GetAttribute;->parameters:[Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Accessible$EventHandler;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 143
    .local v1, "result":Ljava/lang/Object;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 144
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    move-object v2, v5

    .line 145
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 147
    move-object v5, v2

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 154
    .line 157
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible$GetAttribute;
    :goto_0
    return-object v0

    .line 148
    .restart local v0    # "this":Lcom/sun/glass/ui/Accessible$GetAttribute;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The expected return type for the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attribute is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 150
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 151
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 152
    .local v4, "msg":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method
