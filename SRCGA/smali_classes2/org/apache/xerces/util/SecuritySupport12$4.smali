.class Lorg/apache/xerces/util/SecuritySupport12$4;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xerces/util/SecuritySupport12;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xerces/util/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$4;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/util/SecuritySupport12$4;->this$0:Lorg/apache/xerces/util/SecuritySupport12;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/SecuritySupport12$4;->val$cl:Ljava/lang/ClassLoader;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/util/SecuritySupport12$4;->val$name:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$4;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SecuritySupport12$4;->val$cl:Ljava/lang/ClassLoader;

    if-nez v2, :cond_0

    .line 119
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SecuritySupport12$4;->val$name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 123
    .local v1, "ris":Ljava/io/InputStream;
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12$4;
    return-object v0

    .line 121
    .end local v1    # "ris":Ljava/io/InputStream;
    .restart local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12$4;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SecuritySupport12$4;->val$cl:Ljava/lang/ClassLoader;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SecuritySupport12$4;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "ris":Ljava/io/InputStream;
    goto :goto_0
.end method
