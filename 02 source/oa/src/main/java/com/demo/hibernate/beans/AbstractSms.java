/*
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized
 * by MyEclipse Hibernate tool integration.
 *
 * Created Tue Aug 28 18:29:29 CST 2007 by MyEclipse Hibernate Tool.
 */
package com.demo.hibernate.beans;

import java.io.Serializable;

/**
 * A class that represents a row in the sms table. 
 * You can customize the behavior of this class by editing the class, {@link Sms()}.
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized
 * by MyEclipse Hibernate tool integration.
 */
public abstract class AbstractSms 
    implements Serializable
{
    /** The cached hash code value for this instance.  Settting to 0 triggers re-calculation. */
    private int hashValue = 0;

    /** The composite primary key value. */
    private java.lang.Integer id;

    /** The value of the simple username property. */
    private java.lang.String username;

    /** The value of the simple sender property. */
    private java.lang.String sender;

    /** The value of the simple message property. */
    private java.lang.String message;

    /** The value of the simple sendtime property. */
    private java.lang.String sendtime;

    /** The value of the simple isread property. */
    private java.lang.String isread;

    /**
     * Simple constructor of AbstractSms instances.
     */
    public AbstractSms()
    {
    }

    /**
     * Constructor of AbstractSms instances given a simple primary key.
     * @param id
     */
    public AbstractSms(java.lang.Integer id)
    {
        this.setId(id);
    }

    /**
     * Return the simple primary key value that identifies this object.
     * @return java.lang.Integer
     */
    public java.lang.Integer getId()
    {
        return id;
    }

    /**
     * Set the simple primary key value that identifies this object.
     * @param id
     */
    public void setId(java.lang.Integer id)
    {
        this.hashValue = 0;
        this.id = id;
    }

    /**
     * Return the value of the username column.
     * @return java.lang.String
     */
    public java.lang.String getUsername()
    {
        return this.username;
    }

    /**
     * Set the value of the username column.
     * @param username
     */
    public void setUsername(java.lang.String username)
    {
        this.username = username;
    }

    /**
     * Return the value of the sender column.
     * @return java.lang.String
     */
    public java.lang.String getSender()
    {
        return this.sender;
    }

    /**
     * Set the value of the sender column.
     * @param sender
     */
    public void setSender(java.lang.String sender)
    {
        this.sender = sender;
    }

    /**
     * Return the value of the message column.
     * @return java.lang.String
     */
    public java.lang.String getMessage()
    {
        return this.message;
    }

    /**
     * Set the value of the message column.
     * @param message
     */
    public void setMessage(java.lang.String message)
    {
        this.message = message;
    }

    /**
     * Return the value of the sendtime column.
     * @return java.lang.String
     */
    public java.lang.String getSendtime()
    {
        return this.sendtime;
    }

    /**
     * Set the value of the sendtime column.
     * @param sendtime
     */
    public void setSendtime(java.lang.String sendtime)
    {
        this.sendtime = sendtime;
    }

    /**
     * Return the value of the isRead column.
     * @return java.lang.String
     */
    public java.lang.String getIsread()
    {
        return this.isread;
    }

    /**
     * Set the value of the isRead column.
     * @param isread
     */
    public void setIsread(java.lang.String isread)
    {
        this.isread = isread;
    }

    /**
     * Implementation of the equals comparison on the basis of equality of the primary key values.
     * @param rhs
     * @return boolean
     */
    public boolean equals(Object rhs)
    {
        if (rhs == null)
            return false;
        if (! (rhs instanceof Sms))
            return false;
        Sms that = (Sms) rhs;
        if (this.getId() == null || that.getId() == null)
            return false;
        return (this.getId().equals(that.getId()));
    }

    /**
     * Implementation of the hashCode method conforming to the Bloch pattern with
     * the exception of array properties (these are very unlikely primary key types).
     * @return int
     */
    public int hashCode()
    {
        if (this.hashValue == 0)
        {
            int result = 17;
            int idValue = this.getId() == null ? 0 : this.getId().hashCode();
            result = result * 37 + idValue;
            this.hashValue = result;
        }
        return this.hashValue;
    }
}
