.class Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
.super Ljava/lang/Object;
.source "STAXAttributesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/STAXAttributesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attribute"
.end annotation


# instance fields
.field public dup:Z

.field public name:Lorg/apache/xerces/xni/QName;

.field next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

.field public nonNormalizedValue:Ljava/lang/String;

.field public schemaId:Z

.field public specified:Z

.field final synthetic this$0:Lorg/apache/xerces/util/STAXAttributesImpl;

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/STAXAttributesImpl;)V
    .locals 6

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->this$0:Lorg/apache/xerces/util/STAXAttributesImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 727
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    .line 743
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->dup:Z

    return-void
.end method
