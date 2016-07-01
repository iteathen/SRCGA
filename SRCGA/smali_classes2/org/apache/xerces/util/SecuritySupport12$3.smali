.class Lorg/apache/xerces/util/SecuritySupport12$3;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xerces/util/SecuritySupport12;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xerces/util/SecuritySupport12;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/SecuritySupport12;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$3;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/SecuritySupport12$3;->this$0:Lorg/apache/xerces/util/SecuritySupport12;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/SecuritySupport12$3;->val$file:Ljava/io/File;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$3;
    new-instance v1, Ljava/io/FileInputStream;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SecuritySupport12$3;->val$file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12$3;
    return-object v0
.end method
