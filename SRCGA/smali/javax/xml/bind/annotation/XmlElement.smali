.class public interface abstract annotation Ljavax/xml/bind/annotation/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/xml/bind/annotation/XmlElement;
        defaultValue = "\u0000"
        name = "##default"
        namespace = "##default"
        nillable = false
        required = false
        type = Ljavax/xml/bind/annotation/XmlElement$DEFAULT;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/bind/annotation/XmlElement$DEFAULT;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract namespace()Ljava/lang/String;
.end method

.method public abstract nillable()Z
.end method

.method public abstract required()Z
.end method

.method public abstract type()Ljava/lang/Class;
.end method
